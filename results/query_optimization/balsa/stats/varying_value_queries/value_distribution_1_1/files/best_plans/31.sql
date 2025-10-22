/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-4 AND p.Score<23 AND p.CommentCount>3 AND p.CommentCount<17 AND u.DownVotes>136 AND u.DownVotes<1397 AND v.CreationDate>'2013-09-03 08:32:16'::timestamp AND v.CreationDate<'2014-07-28 07:34:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-06-10 19:56:30'::timestamp AND b.Date<'2014-04-10 04:26:59'::timestamp;

