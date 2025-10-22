/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>0 AND p.Score<18 AND p.CommentCount>11 AND p.CommentCount<37 AND u.DownVotes>130 AND u.DownVotes<804 AND v.CreationDate>'2011-05-24 18:51:28'::timestamp AND v.CreationDate<'2012-12-28 01:34:48'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-08-22 00:25:22'::timestamp AND b.Date<'2013-05-27 03:36:30'::timestamp;

