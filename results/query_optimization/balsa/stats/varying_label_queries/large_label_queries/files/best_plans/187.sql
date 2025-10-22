/*+ HashJoin(ph u b p c)
 MergeJoin(ph u b p)
 HashJoin(u b p)
 HashJoin(u b)
 IndexScan(ph)
 IndexScan(u)
 IndexScan(b)
 SeqScan(p)
 SeqScan(c)
 Leading(((ph ((u b) p)) c)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, badges as b, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = ph.UserId AND u.Id = b.UserId AND c.Score=0 AND p.ViewCount>=0 AND p.CommentCount=0 AND p.FavoriteCount=0 AND b.Date<='2014-09-02 17:31:42'::timestamp;

