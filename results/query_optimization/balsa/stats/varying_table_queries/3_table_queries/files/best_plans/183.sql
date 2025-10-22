/*+ MergeJoin(u ph p)
 MergeJoin(u ph)
 IndexScan(u)
 SeqScan(ph)
 SeqScan(p)
 Leading(((u ph) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND ph.CreationDate>='2010-09-21 23:40:39'::timestamp AND p.ViewCount<=8960 AND p.AnswerCount>=0 AND p.AnswerCount<=3 AND p.CommentCount>=0 AND p.FavoriteCount>=0 AND u.DownVotes>=0 AND u.DownVotes<=1 AND u.UpVotes>=0 AND u.UpVotes<=27;

