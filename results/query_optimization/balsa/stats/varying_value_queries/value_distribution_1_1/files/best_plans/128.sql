/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>11 AND p.Score<13 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>260 AND u.DownVotes<1583 AND v.CreationDate>'2012-01-22 21:17:50'::timestamp AND v.CreationDate<'2012-07-19 20:47:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2013-11-07 13:54:19'::timestamp AND b.Date<'2014-02-10 03:33:11'::timestamp;

