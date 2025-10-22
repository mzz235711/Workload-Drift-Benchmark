/*+ HashJoin(c v p u)
 HashJoin(v p u)
 HashJoin(p u)
 SeqScan(c)
 SeqScan(v)
 SeqScan(p)
 SeqScan(u)
 Leading((c (v (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE u.Id = c.UserId AND u.Id = p.OwnerUserId AND u.Id = v.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=26 AND p.ViewCount>=0 AND p.ViewCount<=3650 AND p.AnswerCount>=0 AND p.AnswerCount<=12 AND p.CommentCount<=7 AND p.FavoriteCount=0 AND v.BountyAmount<=50 AND u.CreationDate>='2010-07-27 17:15:57'::timestamp AND u.CreationDate<='2014-08-20 00:41:58'::timestamp;

