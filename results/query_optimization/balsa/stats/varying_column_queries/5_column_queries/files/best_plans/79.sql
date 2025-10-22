/*+ HashJoin(ph p u b)
 HashJoin(ph p u)
 HashJoin(p u)
 SeqScan(ph)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading(((ph (p u)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND ph.CreationDate>='2010-07-22 09:53:52'::timestamp AND p.PostTypeId=1 AND u.DownVotes>=0 AND u.CreationDate<='2014-08-22 10:33:24'::timestamp AND b.Date='2014-05-20 13:17:45'::timestamp;

