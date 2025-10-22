/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>8 AND p.Score<121 AND p.CommentCount>14 AND p.CommentCount<33 AND u.DownVotes>6 AND u.DownVotes<728 AND v.CreationDate>'2010-06-21 03:55:18'::timestamp AND v.CreationDate<'2014-06-18 22:11:38'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2013-09-09 22:46:12'::timestamp AND b.Date<'2013-09-28 04:25:43'::timestamp;

