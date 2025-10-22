/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.PostTypeId=1 AND p.CommentCount>=0 AND p.CommentCount<=20 AND u.Reputation>=1 AND u.Reputation<=146 AND u.Views>=0 AND u.Views<=582 AND u.UpVotes>=0 AND u.UpVotes<=10;

