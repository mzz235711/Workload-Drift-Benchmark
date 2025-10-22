/*+ NestLoop(u p v b)
 NestLoop(u p v)
 MergeJoin(u p)
 SeqScan(u)
 SeqScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<79 AND p.CommentCount>2 AND p.CommentCount<9 AND u.DownVotes>103 AND u.DownVotes<1484 AND v.CreationDate>'2009-07-16 08:14:48'::timestamp AND v.CreationDate<'2011-08-28 19:10:33'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2011-06-15 05:30:28'::timestamp AND b.Date<'2011-09-13 02:54:41'::timestamp;

