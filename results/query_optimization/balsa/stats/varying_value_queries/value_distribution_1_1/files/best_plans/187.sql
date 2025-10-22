/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<60 AND p.CommentCount>6 AND p.CommentCount<41 AND u.DownVotes>76 AND u.DownVotes<1588 AND v.CreationDate>'2010-04-01 19:28:48'::timestamp AND v.CreationDate<'2014-08-04 06:40:47'::timestamp AND v.VoteTypeId>9 AND v.VoteTypeId<14 AND b.Date>'2010-07-29 19:31:05'::timestamp AND b.Date<'2010-10-17 04:20:16'::timestamp;

