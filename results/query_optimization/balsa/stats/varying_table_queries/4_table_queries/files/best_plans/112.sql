/*+ HashJoin(v u b p)
 HashJoin(u b p)
 HashJoin(u b)
 SeqScan(v)
 IndexScan(u)
 IndexScan(b)
 IndexScan(p)
 Leading((v ((u b) p))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.AnswerCount<=10 AND u.Reputation=113 AND u.CreationDate<='2014-08-02 16:30:30'::timestamp;

