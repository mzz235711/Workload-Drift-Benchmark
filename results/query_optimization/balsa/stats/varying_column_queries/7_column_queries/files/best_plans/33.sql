/*+ HashJoin(b ph u p)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(b)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 Leading((b (ph (u p)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.ViewCount<=2142 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND u.Reputation=16 AND u.DownVotes=0 AND u.UpVotes>=0 AND u.UpVotes<=55;

