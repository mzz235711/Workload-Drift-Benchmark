/*+ HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 Leading((ph (p u))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.PostId = p.Id AND p.OwnerUserId = u.Id AND ph.CreationDate>='2010-11-18 14:22:23'::timestamp AND ph.CreationDate<='2014-08-27 18:17:06'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=4442 AND p.CommentCount<=10 AND p.CreationDate<='2014-08-28 09:31:54'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.DownVotes<=2;

