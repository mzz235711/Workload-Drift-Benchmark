/*+ HashJoin(ph u p b)
 HashJoin(ph u p)
 HashJoin(u p)
 SeqScan(ph)
 IndexScan(u)
 SeqScan(p)
 IndexScan(b)
 Leading(((ph (u p)) b)) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, users as u, badges as b WHERE u.Id = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = b.UserId AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=16 AND u.Reputation<=311 AND u.Views<=15 AND u.UpVotes>=0 AND u.UpVotes<=103;

