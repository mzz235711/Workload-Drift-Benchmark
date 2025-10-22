/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<93 AND p.CommentCount>0 AND p.CommentCount<16 AND u.DownVotes>99 AND u.DownVotes<1138 AND v.CreationDate>'2012-12-25 13:05:41'::timestamp AND v.CreationDate<'2013-12-14 09:59:20'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2011-12-19 12:57:17'::timestamp AND b.Date<'2013-07-27 08:02:46'::timestamp;

