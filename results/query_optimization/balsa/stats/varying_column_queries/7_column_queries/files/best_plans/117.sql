/*+ HashJoin(v p b u)
 MergeJoin(p b u)
 MergeJoin(b u)
 SeqScan(v)
 SeqScan(p)
 SeqScan(b)
 IndexScan(u)
 Leading((v (p (b u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.VoteTypeId=2 AND p.Score>=-2 AND p.AnswerCount<=5 AND p.CreationDate<='2014-09-09 14:50:09'::timestamp AND u.DownVotes>=0 AND u.UpVotes=0 AND u.CreationDate>='2010-07-19 19:03:57'::timestamp;

