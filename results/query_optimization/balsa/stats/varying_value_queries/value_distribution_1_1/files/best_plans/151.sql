/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-17 AND p.Score<114 AND p.CommentCount>11 AND p.CommentCount<18 AND u.DownVotes>95 AND u.DownVotes<652 AND v.CreationDate>'2011-08-29 09:13:09'::timestamp AND v.CreationDate<'2012-11-15 19:35:31'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<9 AND b.Date>'2011-05-11 10:59:27'::timestamp AND b.Date<'2013-03-23 02:06:35'::timestamp;

