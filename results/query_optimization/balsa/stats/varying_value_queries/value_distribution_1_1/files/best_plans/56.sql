/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>10 AND p.Score<125 AND p.CommentCount>7 AND p.CommentCount<36 AND u.DownVotes>276 AND u.DownVotes<1755 AND v.CreationDate>'2011-04-16 22:10:05'::timestamp AND v.CreationDate<'2013-05-10 00:46:25'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<9 AND b.Date>'2011-09-14 23:33:15'::timestamp AND b.Date<'2012-09-22 05:04:32'::timestamp;

