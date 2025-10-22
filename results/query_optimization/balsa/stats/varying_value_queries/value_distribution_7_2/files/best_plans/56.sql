/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 SeqScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>39 AND p.Score<53 AND p.CommentCount>4 AND p.CommentCount<9 AND u.DownVotes>446 AND u.DownVotes<1104 AND v.CreationDate>'2009-10-01 05:50:34'::timestamp AND v.CreationDate<'2014-08-26 02:32:48'::timestamp AND v.VoteTypeId>3 AND v.VoteTypeId<11 AND b.Date>'2011-01-31 23:24:20'::timestamp AND b.Date<'2012-11-29 19:46:30'::timestamp;

