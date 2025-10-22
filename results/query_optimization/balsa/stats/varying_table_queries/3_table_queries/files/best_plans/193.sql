/*+ MergeJoin(u ph p)
 HashJoin(ph p)
 IndexScan(u)
 SeqScan(ph)
 IndexScan(p)
 Leading((u (ph p))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=10 AND p.CreationDate='2013-07-20 07:18:15'::timestamp AND u.Reputation<=2031 AND u.DownVotes<=0 AND u.UpVotes<=62 AND u.CreationDate>='2010-07-20 00:16:31'::timestamp AND u.CreationDate<='2014-08-25 08:48:43'::timestamp;

