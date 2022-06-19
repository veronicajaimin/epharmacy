

<button class="open-button" onclick="openChat()" role="openchatbutton" >Hi! I'm a PharmaBot.</button>

<!-- <div class="heading">
    <h1>PharmaBot</h1>
</div> -->


<div>


  <div role="openchat" class="chat-popup">
                   
    <div id="webchat" role="main"></div>
</div>
</div>  

  <script src="https://cdn.botframework.com/botframework-webchat/latest/webchat.js"></script>

  <script>

        function openChat() {
            var chatWindowElement = document.getElementById("chatWindow");
            if (window.getComputedStyle(chatWindowElement).display === "none") {
                document.getElementById("chatWindow").style.display = "block";
                document.getElementById("chatbutton").innerHTML = "Close";
            } else {
                document.getElementById("chatWindow").style.display = "none";
                document.getElementById("chatbutton").innerHTML = "Hi! I'm a PharmaBot.";
            }
            }

    document.querySelectorAll('[role="main"]')[0].setAttribute("id", "webchat");
    document.querySelectorAll('[role="openchat"]')[0].setAttribute("id", "chatWindow");
    document.querySelectorAll('[role="openchatbutton"]')[0].setAttribute("id", "chatbutton");
    
        const styleOptions = {
            bubbleBackground: "lightgray",
            bubbleBorderStyle: "solid",
            bubbleBorderRadius: "10px",
            bubbleFromUserBackground: "#5ce9ff",
            bubbleFromUserBorderRadius: "10px",
            groupTimeStamp: 3000,
            emojiSet: true,
            timestampFormat: 'relative',
            timestampColor: "gray",  
            border:"black",
            hideUploadButton: true

        };

        const styleSet = createStyleSet({
        ...styleOptions,
      });

      styleSet.activities = {
        ...styleSet.activities,
        backgroundImage:
          "url('https://i.pinimg.com/originals/79/5c/ab/795cabc4647f73b365e2e6eabd0f34dc.png')",
      };

        // Add your BOT ID below
        var BOT_ID = "21422f65-819d-478e-a50f-bb4b63c94136"; 

        var theURL = "https://powerva.microsoft.com/api/botmanagement/v1/directline/directlinetoken?botId=" + BOT_ID;
        
        const store = window.WebChat.createStore(
           {},
           ({ dispatch }) => next => action => {
               if (action.type === "DIRECT_LINE/CONNECT_FULFILLED") {
                  dispatch({
                      meta: {
                           method: "keyboard",
                       },
                       payload: {
                           activity: {
                                 channelData: {
                                      postBack: true,
                                 },
                                  name: 'startConversation', 
                                  type: "event"
                             },
                        },
                        type: "DIRECT_LINE/POST_ACTIVITY",
                   });
             }
             return next(action);
          }
       );
       fetch(theURL)
            .then(response => response.json())
            .then(conversationInfo => {
                window.WebChat.renderWebChat(
                    {
                        directLine: window.WebChat.createDirectLine({
                            token: conversationInfo.token,
                        }),
                        store: store,
                        styleOptions: styleOptions
                    },
                    document.getElementById('webchat')
                );
            })
            .catch(err => console.error("An error occurred: " + err));

    </script>


