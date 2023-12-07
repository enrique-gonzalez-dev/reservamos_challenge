# README

Resevamos challenge

REST API which can be consumed by a client app to check the weather forecast for the destinations available in Reservamos.

* Ruby version: '2.6.6'
* Rails version: '~> 6.0.6', '>= 6.0.6.1'

Create `.env` file to set environment variables, view `.env.example`

**Installation**
    `bundle install`

**Run project**
    `rails s`
    *App now running in localhost:3000*

**Endpoints**

`GET` "/weather_forecast?city={city}"
*Returns a weather forecast for each found city and to the next 7 days*

Params:
* `city` *(required)* 
    **City to find coordinates**
* `page` *(optional) default: 1*
    **Require specific page**
* `per_page` *(optional) default: 10*
    **Items per page**
* `units` *(optional) default: standard, enum(standard, metric, imperial)*
    **Metric unit**

Example response:
*/weather_forecast?city=pachuca*

```json
{
    "total_pages": 2,
    "cities": [
        {
            "city": "Pachuca",
            "weather": {
                "current": {
                    "min_temp": 282.91,
                    "max_temp": 289.58,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 282.91,
                        "max_temp": 289.58,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.8,
                        "max_temp": 292.69,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.23,
                        "max_temp": 293.13,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.33,
                        "max_temp": 286.2,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 280.9,
                        "max_temp": 284.94,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 281.92,
                        "max_temp": 290.31,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 281.79,
                        "max_temp": 290.76,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 282.83,
                        "max_temp": 285.09,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Pachuca",
            "weather": {
                "current": {
                    "min_temp": 283.14,
                    "max_temp": 289.95,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 283.14,
                        "max_temp": 289.95,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.91,
                        "max_temp": 292.77,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.38,
                        "max_temp": 293.23,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.72,
                        "max_temp": 286.48,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 281.28,
                        "max_temp": 285.22,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 282.09,
                        "max_temp": 290.47,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 282.03,
                        "max_temp": 291.09,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 283.03,
                        "max_temp": 285.5,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Pachuca",
            "weather": {
                "current": {
                    "min_temp": 282.87,
                    "max_temp": 289.51,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 282.87,
                        "max_temp": 289.51,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.8,
                        "max_temp": 292.7,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.22,
                        "max_temp": 293.14,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.24,
                        "max_temp": 286.15,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 280.81,
                        "max_temp": 284.9,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 281.9,
                        "max_temp": 290.29,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 281.75,
                        "max_temp": 290.7,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 282.81,
                        "max_temp": 285.02,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Pachuca",
            "weather": {
                "current": {
                    "min_temp": 282.85,
                    "max_temp": 289.53,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 282.85,
                        "max_temp": 289.53,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.77,
                        "max_temp": 292.65,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.21,
                        "max_temp": 293.1,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.25,
                        "max_temp": 286.18,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 280.83,
                        "max_temp": 284.96,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 281.9,
                        "max_temp": 290.26,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 281.75,
                        "max_temp": 290.7,
                        "weather": "Rain"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 282.79,
                        "max_temp": 285.02,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Pachuca",
            "weather": {
                "current": {
                    "min_temp": 283.21,
                    "max_temp": 290.11,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 283.21,
                        "max_temp": 290.11,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.89,
                        "max_temp": 292.72,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.41,
                        "max_temp": 293.22,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.92,
                        "max_temp": 286.59,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 281.47,
                        "max_temp": 285.34,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 282.13,
                        "max_temp": 290.5,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 282.11,
                        "max_temp": 291.23,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 283.07,
                        "max_temp": 285.73,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Pachuca",
            "weather": {
                "current": {
                    "min_temp": 283.78,
                    "max_temp": 288.98,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 283.78,
                        "max_temp": 288.98,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 283.55,
                        "max_temp": 293.45,
                        "weather": "Rain"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.6,
                        "max_temp": 293.9,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 279.77,
                        "max_temp": 287.31,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 280.73,
                        "max_temp": 284.96,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 283.13,
                        "max_temp": 290.43,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 281.84,
                        "max_temp": 289.5,
                        "weather": "Rain"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 283.6,
                        "max_temp": 285.15,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Pachuca",
            "weather": {
                "current": {
                    "min_temp": 283.33,
                    "max_temp": 290.32,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 283.33,
                        "max_temp": 290.32,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.89,
                        "max_temp": 292.7,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.48,
                        "max_temp": 293.23,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 281.19,
                        "max_temp": 286.73,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 281.73,
                        "max_temp": 285.47,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 282.19,
                        "max_temp": 290.55,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 282.24,
                        "max_temp": 291.42,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 283.15,
                        "max_temp": 286.02,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Villas de Pachuca",
            "weather": {
                "current": {
                    "min_temp": 283.23,
                    "max_temp": 290.17,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 283.23,
                        "max_temp": 290.17,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.94,
                        "max_temp": 292.75,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.46,
                        "max_temp": 293.26,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.96,
                        "max_temp": 286.65,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 281.52,
                        "max_temp": 285.45,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 282.18,
                        "max_temp": 290.54,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 282.16,
                        "max_temp": 291.28,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 283.11,
                        "max_temp": 285.8,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Villas de Pachuca",
            "weather": {
                "current": {
                    "min_temp": 283.21,
                    "max_temp": 290.11,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 283.21,
                        "max_temp": 290.11,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.89,
                        "max_temp": 292.72,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.41,
                        "max_temp": 293.22,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.93,
                        "max_temp": 286.59,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 281.48,
                        "max_temp": 285.34,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 282.13,
                        "max_temp": 290.5,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 282.11,
                        "max_temp": 291.23,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 283.08,
                        "max_temp": 285.74,
                        "weather": "Rain"
                    }
                ]
            }
        },
        {
            "city": "Villas de Pachuca",
            "weather": {
                "current": {
                    "min_temp": 283.23,
                    "max_temp": 290.17,
                    "weather": "Clouds",
                    "date": "07/12/2023"
                },
                "daily": [
                    {
                        "date": "07/12/2023",
                        "min_temp": 283.23,
                        "max_temp": 290.17,
                        "weather": "Rain"
                    },
                    {
                        "date": "08/12/2023",
                        "min_temp": 282.94,
                        "max_temp": 292.75,
                        "weather": "Clear"
                    },
                    {
                        "date": "09/12/2023",
                        "min_temp": 285.46,
                        "max_temp": 293.26,
                        "weather": "Rain"
                    },
                    {
                        "date": "10/12/2023",
                        "min_temp": 280.96,
                        "max_temp": 286.65,
                        "weather": "Rain"
                    },
                    {
                        "date": "11/12/2023",
                        "min_temp": 281.52,
                        "max_temp": 285.45,
                        "weather": "Rain"
                    },
                    {
                        "date": "12/12/2023",
                        "min_temp": 282.18,
                        "max_temp": 290.54,
                        "weather": "Rain"
                    },
                    {
                        "date": "13/12/2023",
                        "min_temp": 282.16,
                        "max_temp": 291.28,
                        "weather": "Clouds"
                    },
                    {
                        "date": "14/12/2023",
                        "min_temp": 283.11,
                        "max_temp": 285.8,
                        "weather": "Rain"
                    }
                ]
            }
        }
    ]
}
```
