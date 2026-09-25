"""Request and response bodies. These also produce the OpenAPI schema."""
from typing import Literal, Optional

from pydantic import BaseModel, Field

WebsiteStatus = Literal['new', 'in-progress', 'complete']
WebsitePriority = Literal['low', 'normal', 'high']


class WebsiteCreate(BaseModel):
    title: str = Field(min_length=1, max_length=400)
    reference: str = Field(default="", max_length=200)
    status: WebsiteStatus = 'new'
    priority: WebsitePriority = 'normal'


class WebsiteUpdate(BaseModel):
    title: Optional[str] = Field(default=None, min_length=1, max_length=400)
    reference: Optional[str] = Field(default=None, max_length=200)
    status: Optional[WebsiteStatus] = None
    priority: Optional[WebsitePriority] = None


class Website(WebsiteCreate):
    id: int
