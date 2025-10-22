/*+ MergeJoin(v p u b)
 MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(v)
 SeqScan(p)
 SeqScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-15 AND p.Score<61 AND p.CommentCount>5 AND p.CommentCount<25 AND u.DownVotes>1 AND u.DownVotes<1442 AND v.CreationDate>'2009-06-01 16:33:41'::timestamp AND v.CreationDate<'2014-06-05 03:17:17'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2013-11-09 06:11:22'::timestamp AND b.Date<'2014-08-05 06:41:32'::timestamp;

