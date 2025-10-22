/*+ MergeJoin(ph u p)
 HashJoin(u p)
 IndexScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading((ph (u p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-11-09 13:06:41'::timestamp AND ph.CreationDate<='2014-08-29 08:54:22'::timestamp AND p.Score<=18 AND p.ViewCount>=0 AND p.AnswerCount=0 AND p.CommentCount=2 AND p.FavoriteCount<=4 AND u.Reputation=101 AND u.Views>=0;

