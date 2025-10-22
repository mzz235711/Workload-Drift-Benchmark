/*+ HashJoin(p ph u)
 HashJoin(ph u)
 SeqScan(p)
 SeqScan(ph)
 IndexScan(u)
 Leading((p (ph u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=2 AND p.Score<=11 AND p.CommentCount=0 AND p.CreationDate<='2014-09-12 03:39:00'::timestamp AND u.Views<=638 AND u.DownVotes<=0 AND u.UpVotes=0;

