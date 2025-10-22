/*+ MergeJoin(v p u b)
 HashJoin(v p u)
 HashJoin(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 SeqScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<123 AND p.CommentCount>6 AND p.CommentCount<40 AND u.DownVotes>616 AND u.DownVotes<830 AND v.CreationDate>'2009-04-01 20:23:48'::timestamp AND v.CreationDate<'2013-12-26 13:32:30'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-08-22 22:53:18'::timestamp AND b.Date<'2012-06-13 07:52:17'::timestamp;

