/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 HashJoin(p v)
 IndexScan(b)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<187 AND p.CommentCount>0 AND p.CommentCount<33 AND u.DownVotes>644 AND u.DownVotes<1335 AND v.CreationDate>'2011-09-07 20:38:33'::timestamp AND v.CreationDate<'2011-10-05 21:01:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<9 AND b.Date>'2011-10-13 14:45:48'::timestamp AND b.Date<'2013-11-06 22:34:15'::timestamp;

