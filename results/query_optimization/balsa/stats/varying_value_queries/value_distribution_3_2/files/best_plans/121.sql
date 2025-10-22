/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-2 AND p.Score<3 AND p.CommentCount>16 AND p.CommentCount<27 AND u.DownVotes>8 AND u.DownVotes<1849 AND v.CreationDate>'2011-04-07 19:43:24'::timestamp AND v.CreationDate<'2013-10-30 01:19:03'::timestamp AND v.VoteTypeId>2 AND v.VoteTypeId<4 AND b.Date>'2012-05-25 03:02:31'::timestamp AND b.Date<'2014-05-17 10:07:52'::timestamp;

