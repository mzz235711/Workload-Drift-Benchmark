/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<70 AND p.CommentCount>7 AND p.CommentCount<32 AND u.DownVotes>25 AND u.DownVotes<1683 AND v.CreationDate>'2013-09-06 16:53:20'::timestamp AND v.CreationDate<'2013-11-17 02:11:12'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-01-25 09:59:14'::timestamp AND b.Date<'2014-07-31 05:47:02'::timestamp;

