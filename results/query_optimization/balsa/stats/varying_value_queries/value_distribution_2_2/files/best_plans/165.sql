/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>15 AND p.Score<60 AND p.CommentCount>4 AND p.CommentCount<29 AND u.DownVotes>747 AND u.DownVotes<1360 AND v.CreationDate>'2011-07-13 18:30:29'::timestamp AND v.CreationDate<'2012-05-12 12:27:49'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2010-10-21 00:40:07'::timestamp AND b.Date<'2011-08-05 20:54:09'::timestamp;

