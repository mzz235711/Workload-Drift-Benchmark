/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<128 AND p.CommentCount>6 AND p.CommentCount<40 AND u.DownVotes>52 AND u.DownVotes<313 AND v.CreationDate>'2009-05-01 09:45:53'::timestamp AND v.CreationDate<'2013-01-03 20:22:27'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-06-07 14:50:04'::timestamp AND b.Date<'2013-03-19 08:51:23'::timestamp;

