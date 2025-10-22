/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>7 AND p.Score<151 AND p.CommentCount>6 AND p.CommentCount<31 AND u.DownVotes>116 AND u.DownVotes<1050 AND v.CreationDate>'2011-01-27 11:55:27'::timestamp AND v.CreationDate<'2011-07-19 08:55:45'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<7 AND b.Date>'2010-08-23 19:50:58'::timestamp AND b.Date<'2014-07-15 09:35:25'::timestamp;

