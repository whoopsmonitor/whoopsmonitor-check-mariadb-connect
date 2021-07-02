FROM node:dubnium-alpine3.11
LABEL maintainer="Daniel Rataj <daniel.rataj@centrum.cz>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-mariadb-connect"
LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-mariadb-connect"
LABEL com.whoopsmonitor.icon="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGlkPSJMYXllcl8xIiBkYXRhLW5hbWU9IkxheWVyIDEiIHZpZXdCb3g9IjAgMCAzMDkuODggMjUyLjcyIj4KICA8ZGVmcz4KICAgIDxzdHlsZT4uY2xzLTF7ZmlsbDojMDAzNTQ1O308L3N0eWxlPgogIDwvZGVmcz4KICA8dGl0bGU+TURCLVZMb2dvX1JHQjwvdGl0bGU+CiAgPHBhdGggY2xhc3M9ImNscy0xIiBkPSJNNjEuNzQsMjE0LjkxLDczLDI1OC40NmgtOC41TDU3LDIyNy4wOSw0Mi44NiwyNTguNDZIMzUuNjhMMjEuNjIsMjI3LjI3LDEzLjksMjU4LjQ2SDUuNThsMTEuMTYtNDMuNTVIMjQuMWwxNS4yLDMzLjcyLDE1LjE0LTMzLjcyWiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTUuNTggLTYuNCkiPjwvcGF0aD4KICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik0xMDUuMTEsMjMxLjc0di01LjA3aDguMjF2MzEuNzloLTguMjF2LTUuMTJjLTIuMTcsMy42OC02LjYzLDUuNzktMTIuMDYsNS43OS0xMS4zNSwwLTE3LjY4LTgtMTcuNjgtMTcuMiwwLTguODcsNi0xNiwxNi40Ny0xNkM5Ny44MSwyMjYsMTAyLjc2LDIyOCwxMDUuMTEsMjMxLjc0Wm0tMjEsMTAuNjJjMCw1Ljg1LDMuNjgsMTAuODYsMTAuOCwxMC44Niw2Ljg3LDAsMTAuNjEtNC44OSwxMC42MS0xMC42OHMtMy44Ni0xMC43NC0xMS0xMC43NEM4Ny42OCwyMzEuOCw4NC4xMiwyMzYuNzQsODQuMTIsMjQyLjM2WiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTUuNTggLTYuNCkiPjwvcGF0aD4KICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik0xMzEuODMsMjU4LjQ2aC04LjJWMjI2LjY3aDguMnY3LjEyQTEyLjU4LDEyLjU4LDAsMCwxLDE0My4yOSwyMjZhMTQuODQsMTQuODQsMCwwLDEsNS4xMy44NGwtMS43NSw2YTE4LDE4LDAsMCwwLTQuMzQtLjZjLTUuOTIsMC0xMC41LDQuNDYtMTAuNSwxMVoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC01LjU4IC02LjQpIj48L3BhdGg+CiAgPHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMTUyLjUyLDIxOC4yOGE0LjE3LDQuMTcsMCwwLDEsNC40LTQuMjgsNC4zMyw0LjMzLDAsMCwxLDQuNDcsNC40MSw0LjE1LDQuMTUsMCwwLDEtNC40Nyw0LjIyQTQuMjIsNC4yMiwwLDAsMSwxNTIuNTIsMjE4LjI4Wm0uMzYsOC4zOWg4LjIxVjI0OS45YzAsMS40NC4zLDIuNDcsMS41LDIuNDdhOC44NSw4Ljg1LDAsMCwwLDEuNTctLjE4bDEuMjcsNmExNC4zNiwxNC4zNiwwLDAsMS01LjQzLDFjLTMuNDQsMC03LjEyLTEtNy4xMi04LjgxWiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTUuNTggLTYuNCkiPjwvcGF0aD4KICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik0xOTcuNzYsMjMxLjc0di01LjA3SDIwNnYzMS43OWgtOC4yMXYtNS4xMmMtMi4xNywzLjY4LTYuNjMsNS43OS0xMi4wNiw1Ljc5LTExLjM0LDAtMTcuNjgtOC0xNy42OC0xNy4yLDAtOC44Nyw2LTE2LDE2LjQ3LTE2QzE5MC40NiwyMjYsMTk1LjQxLDIyOCwxOTcuNzYsMjMxLjc0Wm0tMjEsMTAuNjJjMCw1Ljg1LDMuNjgsMTAuODYsMTAuOCwxMC44Niw2Ljg4LDAsMTAuNjItNC44OSwxMC42Mi0xMC42OHMtMy44Ny0xMC43NC0xMS0xMC43NEMxODAuMzMsMjMxLjgsMTc2Ljc3LDIzNi43NCwxNzYuNzcsMjQyLjM2WiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTUuNTggLTYuNCkiPjwvcGF0aD4KICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik0yMTguNTcsMjE0LjkxaDE5LjY3YzE2LjUzLDAsMjQuNzksOS4xMSwyNC42NywyMS43Ny4xMiwxMy4xNi05LDIxLjc4LTIzLjIyLDIxLjc4SDIxOC41N1ptNS40MywzLjg2djM1Ljg5aDE1YzEzLjE1LDAsMTguMTYtOC44NywxOC4xNi0xOC4xLDAtMTAuNDMtNi4yNy0xNy43OS0xOC4xNi0xNy43OVoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC01LjU4IC02LjQpIj48L3BhdGg+CiAgPHBhdGggY2xhc3M9ImNscy0xIiBkPSJNMjk2LjQ1LDI1OC40NmgtMjVWMjE0LjkxSDI5NGM4LjYyLDAsMTYuODMsMS42MiwxNi43MSwxMS4yOCwwLDYuODEtNC4yMyw4LjY5LTguNjksOS40MSw2LjMzLjU0LDEwLjE0LDQuNTgsMTAuMTQsMTEuMUMzMTIuMiwyNTYuNDcsMzAzLjYzLDI1OC40NiwyOTYuNDUsMjU4LjQ2Wm0tMS44Ny0yNC41NWM4LjYzLDAsMTAuNTYtMy4zMiwxMC41Ni03LjU0LDAtNi4zNC0zLjg2LTcuNzgtMTAuNTYtNy43OEgyNzYuNjZ2MTUuMzJabS4yNCwzLjY4SDI3Ni42NnYxNy4xOUgyOTUuNmM1LjMxLDAsMTAuOTItMS43NSwxMC45Mi04LjQ0QzMwNi41MiwyMzguNjIsMzAwLjA3LDIzNy41OSwyOTQuODIsMjM3LjU5WiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTUuNTggLTYuNCkiPjwvcGF0aD4KICA8cGF0aCBjbGFzcz0iY2xzLTEiIGQ9Ik0zMTQuMDgsNy4zNWE0LjE4LDQuMTgsMCwwLDAtMi44NC0uOTVjLTIuODMsMC02LjQ5LDEuOTItOC40NiwyLjk1bC0uNzguNGEyNi44NiwyNi44NiwwLDAsMS0xMC41NywyLjY2Yy0zLjc2LjEyLTcsLjM0LTExLjIyLjc4LTI1LDIuNTctMzYuMTUsMjEuNzMtNDYuODksNDAuMjZDMjI3LjQ3LDYzLjUzLDIyMS40Myw3NCwyMTMuMTUsODJhNTQuNCw1NC40LDAsMCwxLTUuNDUsNC42M0MxOTkuMTMsOTMsMTg4LjM3LDk3LjU1LDE4MCwxMDAuNzdjLTguMDYsMy4wOC0xNi44Niw1Ljg1LTI1LjM2LDguNTMtNy43OSwyLjQ1LTE1LjE0LDQuNzctMjEuOSw3LjI4LTMuMDUsMS4xMy01LjY0LDItNy45MywyLjc2LTYuMTYsMi0xMC42LDMuNTMtMTcuMDksOC0yLjUzLDEuNzMtNS4wNywzLjYtNi43OSw1YTcxLjYyLDcxLjYyLDAsMCwwLTEzLjU1LDE0LjI3QTg0LjI1LDg0LjI1LDAsMCwxLDc2LDE2MC4yN2MtMS4zNywxLjM0LTMuOCwyLTcuNDQsMi00LjI2LDAtOS40My0uODgtMTQuOS0xLjgxLTUuNjQtMS0xMS40Ny0xLjk1LTE2LjQ3LTEuOTUtNC4wNiwwLTcuMTcuNjYtOS40OSwyLDAsMC0zLjkxLDIuMjgtNS41Niw1LjIzbDEuNjIuNzNhMzMuMjEsMzMuMjEsMCwwLDEsNi45Miw1LDM0LjcyLDM0LjcyLDAsMCwwLDcuMiw1LjEyQTYuMTgsNi4xOCwwLDAsMSw0MC4xLDE3OGMtLjY4LDEtMS42OCwyLjI5LTIuNzMsMy42Ny01Ljc3LDcuNTUtOS4xNCwxMi4zMi03LjIxLDE0LjkyYTYuMDcsNi4wNywwLDAsMCwzLC42OGMxMi41OCwwLDE5LjM0LTMuMjcsMjcuODktNy40MSwyLjQ4LTEuMiw1LTIuNDMsOC0zLjcsNS0yLjE3LDEwLjM4LTUuNjMsMTYuMDktOS4yOUM5Mi42MSwxNzIsMTAwLjQyLDE2NywxMDgsMTY0LjU5YTYyLjMsNjIuMywwLDAsMSwxOS4yMy0yLjdjOCwwLDE2LjQyLDEuMDcsMjQuNTQsMi4xMSw2LjA1Ljc4LDEyLjMyLDEuNTgsMTguNDcsMS45NSwyLjM5LjE0LDQuNi4yMSw2Ljc1LjIxYTc4LjIxLDc4LjIxLDAsMCwwLDguNjEtLjQ1bC42OS0uMjRjNC4zMS0yLjY1LDYuMzMtOC4zNCw4LjI5LTEzLjg0LDEuMjYtMy41NCwyLjMyLTYuNzIsNC04Ljc0YTIuNTUsMi41NSwwLDAsMSwuMzItLjI3LjQuNCwwLDAsMSwuNDkuMDhzMCwuMDUsMCwuMTZjLTEsMjEuNTEtOS42NiwzNS4xNy0xOC40Miw0Ny4zMWwtNS44NSw2LjI3czguMTksMCwxMi44NS0xLjhjMTctNS4wOCwyOS44My0xNi4yOCwzOS4xNy0zNC4xNGExNDUuNywxNDUuNywwLDAsMCw2LjE3LTE0LjA5Yy4xNi0uNCwxLjYzLTEuMTQsMS40OS45My0uMDUuNjEtLjA5LDEuMjktLjE0LDJoMGMwLC40MiwwLC44NS0uMDgsMS4yOC0uMjQsMy0uOTUsOS4zNC0uOTUsOS4zNGw1LjI1LTIuODFjMTIuNjYtOCwyMi40Mi0yNC4xNCwyOS44Mi00OS4yNSwzLjA4LTEwLjQ2LDUuMzQtMjAuODUsNy4zMy0zMCwyLjM4LTExLDQuNDMtMjAuNDMsNi43OC0yNC4wOSwzLjY5LTUuNzQsOS4zMi05LjYyLDE0Ljc3LTEzLjM5Ljc0LS41MSwxLjQ5LTEsMi4yMi0xLjU0LDYuODUtNC44MSwxMy42Ni0xMC4zNiwxNS4xNi0yMC43MWwwLS4yM0MzMTYuMDUsMTAuMjIsMzE1LjEzLDguMjUsMzE0LjA4LDcuMzVaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtNS41OCAtNi40KSI+PC9wYXRoPgo8L3N2Zz4="
LABEL com.whoopsmonitor.env.WM_CONNECTION_STRING="mariadb://user:password@localhost:3306/test"

WORKDIR /tmp/app

COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json

RUN npm install

WORKDIR /app
RUN cp -R /tmp/app/* ./
COPY ./src/index.js ./src/index.js

CMD [ "npm", "start", "--silent" ]
