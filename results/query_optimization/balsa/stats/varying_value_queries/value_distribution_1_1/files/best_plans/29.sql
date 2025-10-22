/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<32 AND p.CommentCount>12 AND p.CommentCount<34 AND u.DownVotes>210 AND u.DownVotes<1908 AND v.CreationDate>'2010-06-23 01:42:29'::timestamp AND v.CreationDate<'2014-03-22 16:32:49'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<13 AND b.Date>'2012-02-24 02:57:17'::timestamp AND b.Date<'2013-12-21 21:18:03'::timestamp;

