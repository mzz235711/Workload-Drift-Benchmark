/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-11 AND p.Score<67 AND p.CommentCount>17 AND p.CommentCount<43 AND u.DownVotes>515 AND u.DownVotes<1745 AND v.CreationDate>'2009-12-01 03:13:28'::timestamp AND v.CreationDate<'2011-11-30 16:34:15'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<6 AND b.Date>'2012-06-08 07:31:40'::timestamp AND b.Date<'2013-05-01 09:53:24'::timestamp;

