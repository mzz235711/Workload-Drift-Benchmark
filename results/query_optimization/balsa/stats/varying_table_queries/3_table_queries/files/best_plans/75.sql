/*+ MergeJoin(u ph p)
 MergeJoin(u ph)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate<='2014-07-28 15:22:44'::timestamp AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=9 AND p.CommentCount<=16 AND p.FavoriteCount>=0 AND u.DownVotes<=12 AND u.CreationDate>='2010-11-20 21:43:56'::timestamp;

