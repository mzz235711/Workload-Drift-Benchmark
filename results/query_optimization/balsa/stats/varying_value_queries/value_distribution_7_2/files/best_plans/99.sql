/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-3 AND p.Score<178 AND p.CommentCount>18 AND p.CommentCount<24 AND u.DownVotes>597 AND u.DownVotes<1552 AND v.CreationDate>'2010-10-15 05:13:07'::timestamp AND v.CreationDate<'2012-12-04 08:06:21'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-12-25 12:28:17'::timestamp AND b.Date<'2013-01-08 23:34:51'::timestamp;

