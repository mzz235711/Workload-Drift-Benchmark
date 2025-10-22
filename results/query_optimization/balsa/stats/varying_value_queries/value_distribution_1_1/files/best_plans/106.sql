/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-1 AND p.Score<48 AND p.CommentCount>12 AND p.CommentCount<23 AND u.DownVotes>93 AND u.DownVotes<323 AND v.CreationDate>'2013-01-24 10:06:29'::timestamp AND v.CreationDate<'2014-05-21 12:56:57'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<15 AND b.Date>'2012-09-12 12:05:37'::timestamp AND b.Date<'2014-07-19 05:50:43'::timestamp;

