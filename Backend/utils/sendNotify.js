const axios = require("axios");

async function sendNotification(title, body, clickMessage, token) {
  try {
    const notification = {
      title: title,
      body: body
    };

    const message = {
      notification: notification,
      data: {
        click_action: clickMessage,
        sound: "default"
      },
      to: token
    };

    const response = await axios.post(
      "https://fcm.googleapis.com/fcm/send",
      message,
      {
        headers: {
          "Content-Type": "application/json",
          Authorization:
            "key=AAAAxCT30J0:APA91bHPCq2Mi6mi-Hwuit3v2MBc9EkUesFLh7gHru2ZLxC4pr_bjQmAVDYpy_TI_MRDRouaYnVU4J6mxeZWqVRakcXbzbVAm-ZZswe6kx7c0onBX2mOIW-rmDLYjGloI4P3YV3hC_CY" // Replace with your FCM server key
        }
      }
    );

    if (response.status === 200) {
      console.log("Notification sent successfully");
    } else {
      console.log(`Failed to send notification. Error: ${response.data.error}`);
    }
  } catch (error) {
    console.error(`Error sending notification: ${error.message}`);
  }
}

module.exports = sendNotification;
