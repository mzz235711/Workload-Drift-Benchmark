/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>52 AND p.Score<118 AND p.CommentCount>6 AND p.CommentCount<22 AND u.DownVotes>512 AND u.DownVotes<1732 AND v.CreationDate>'2010-11-18 10:21:53'::timestamp AND v.CreationDate<'2014-04-19 02:50:51'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<15 AND b.Date>'2012-05-08 09:36:30'::timestamp AND b.Date<'2012-11-05 08:10:40'::timestamp;

