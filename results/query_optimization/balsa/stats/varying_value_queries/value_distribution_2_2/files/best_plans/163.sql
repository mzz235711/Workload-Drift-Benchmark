/*+ NestLoop(u p v b)
 NestLoop(u p v)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(v)
 IndexScan(b)
 Leading((((u p) v) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>6 AND p.Score<125 AND p.CommentCount>16 AND p.CommentCount<32 AND u.DownVotes>499 AND u.DownVotes<1721 AND v.CreationDate>'2010-08-18 14:20:46'::timestamp AND v.CreationDate<'2013-07-28 02:56:57'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<13 AND b.Date>'2011-05-19 08:38:12'::timestamp AND b.Date<'2011-06-05 00:12:08'::timestamp;

