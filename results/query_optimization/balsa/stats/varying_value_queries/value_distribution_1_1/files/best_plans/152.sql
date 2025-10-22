/*+ MergeJoin(b p v u)
 MergeJoin(p v u)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(p)
 SeqScan(v)
 SeqScan(u)
 Leading((b ((p v) u))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<131 AND p.CommentCount>5 AND p.CommentCount<40 AND u.DownVotes>204 AND u.DownVotes<891 AND v.CreationDate>'2011-04-27 12:24:12'::timestamp AND v.CreationDate<'2011-12-07 16:46:25'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<13 AND b.Date>'2010-12-10 12:09:29'::timestamp AND b.Date<'2012-09-07 04:20:22'::timestamp;

