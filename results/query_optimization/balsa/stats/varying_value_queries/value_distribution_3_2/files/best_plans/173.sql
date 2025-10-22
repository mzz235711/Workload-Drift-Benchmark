/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<128 AND p.CommentCount>6 AND p.CommentCount<44 AND u.DownVotes>91 AND u.DownVotes<1705 AND v.CreationDate>'2010-10-23 09:27:56'::timestamp AND v.CreationDate<'2010-11-17 13:43:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<5 AND b.Date>'2011-06-02 00:23:52'::timestamp AND b.Date<'2012-12-25 23:52:38'::timestamp;

