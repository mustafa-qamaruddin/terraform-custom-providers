package hashicups

type Order struct {
	ID    int         `json:"id"`
	Items []OrderItem `json:"items"`
}

type OrderItem struct {
	Coffee struct {
		ID          int         `json:"id"`
		Name        string      `json:"name"`
		Teaser      string      `json:"teaser"`
		Description string      `json:"description"`
		Price       int         `json:"price"`
		Image       string      `json:"image"`
		Ingredients interface{} `json:"ingredients"`
	} `json:"coffee"`
	Quantity int `json:"quantity"`
}
