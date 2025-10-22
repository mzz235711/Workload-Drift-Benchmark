/*+ NestLoop(u p b v)
 NestLoop(u p b)
 NestLoop(u p)
 SeqScan(u)
 IndexScan(p)
 IndexScan(b)
 IndexScan(v)
 Leading((((u p) b) v)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-9 AND p.Score<73 AND p.CommentCount>15 AND p.CommentCount<40 AND u.DownVotes>245 AND u.DownVotes<1300 AND v.CreationDate>'2009-09-30 02:52:04'::timestamp AND v.CreationDate<'2014-06-07 06:59:08'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<9 AND b.Date>'2011-01-26 13:53:42'::timestamp AND b.Date<'2013-03-24 11:42:24'::timestamp;

