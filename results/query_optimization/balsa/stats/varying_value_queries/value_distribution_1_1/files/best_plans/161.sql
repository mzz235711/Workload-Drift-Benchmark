/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<68 AND p.CommentCount>0 AND p.CommentCount<32 AND u.DownVotes>338 AND u.DownVotes<643 AND v.CreationDate>'2012-01-18 22:54:54'::timestamp AND v.CreationDate<'2013-07-12 01:24:02'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<14 AND b.Date>'2010-10-06 17:17:16'::timestamp AND b.Date<'2012-03-11 20:32:29'::timestamp;

