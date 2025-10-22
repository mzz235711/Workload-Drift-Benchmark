/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>64 AND p.Score<73 AND p.CommentCount>17 AND p.CommentCount<31 AND u.DownVotes>73 AND u.DownVotes<863 AND v.CreationDate>'2009-05-12 13:15:34'::timestamp AND v.CreationDate<'2014-07-02 14:47:58'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2011-07-03 08:23:19'::timestamp AND b.Date<'2012-02-11 05:36:35'::timestamp;

