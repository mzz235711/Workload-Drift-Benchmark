/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>1 AND p.Score<13 AND p.CommentCount>7 AND p.CommentCount<18 AND u.DownVotes>146 AND u.DownVotes<501 AND v.CreationDate>'2012-10-31 22:23:02'::timestamp AND v.CreationDate<'2013-01-19 18:32:33'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<11 AND b.Date>'2013-03-10 18:36:08'::timestamp AND b.Date<'2014-01-10 08:31:10'::timestamp;

