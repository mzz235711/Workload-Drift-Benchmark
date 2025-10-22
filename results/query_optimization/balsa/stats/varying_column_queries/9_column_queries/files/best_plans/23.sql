/*+ HashJoin(ph u p)
 HashJoin(ph u)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 Leading(((ph u) p)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u WHERE ph.UserId = p.OwnerUserId AND ph.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount<=17198 AND p.AnswerCount<=5 AND p.CreationDate>='2010-07-19 19:33:19'::timestamp AND p.CreationDate<='2014-09-07 20:05:15'::timestamp AND u.Views>=0 AND u.DownVotes>=0 AND u.UpVotes>=0 AND u.UpVotes<=50;

