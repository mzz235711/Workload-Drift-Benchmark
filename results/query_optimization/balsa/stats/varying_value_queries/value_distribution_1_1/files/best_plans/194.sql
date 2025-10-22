/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 SeqScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-12 AND p.Score<171 AND p.CommentCount>7 AND p.CommentCount<14 AND u.DownVotes>40 AND u.DownVotes<62 AND v.CreationDate>'2009-08-28 10:25:38'::timestamp AND v.CreationDate<'2012-03-08 12:42:45'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<11 AND b.Date>'2010-12-04 11:45:00'::timestamp AND b.Date<'2011-07-07 06:28:37'::timestamp;

