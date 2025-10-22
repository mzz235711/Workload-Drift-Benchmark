/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=2 AND p.Score<=28 AND p.CommentCount>=0 AND u.Reputation<=1640 AND u.UpVotes>=0 AND u.UpVotes<=37 AND u.CreationDate<='2014-09-11 16:56:14'::timestamp;

