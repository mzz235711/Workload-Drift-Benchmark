/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-6 AND p.Score<52 AND p.CommentCount>22 AND p.CommentCount<42 AND u.DownVotes>271 AND u.DownVotes<1534 AND v.CreationDate>'2010-04-27 06:58:12'::timestamp AND v.CreationDate<'2013-10-26 06:57:40'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<4 AND b.Date>'2012-12-05 12:45:38'::timestamp AND b.Date<'2014-07-06 06:08:36'::timestamp;

