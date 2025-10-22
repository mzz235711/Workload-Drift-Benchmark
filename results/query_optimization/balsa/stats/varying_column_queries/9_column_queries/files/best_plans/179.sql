/*+ HashJoin(ph c p)
 HashJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 SeqScan(p)
 Leading((ph (c p))) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph WHERE p.Id = c.PostId AND p.Id = ph.PostId AND c.CreationDate<='2014-09-10 21:10:27'::timestamp AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=10 AND p.ViewCount<=2322 AND p.AnswerCount<=7 AND p.FavoriteCount<=7 AND ph.PostHistoryTypeId=2 AND ph.CreationDate>='2011-10-31 12:13:53'::timestamp;

