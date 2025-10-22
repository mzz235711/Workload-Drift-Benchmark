/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>23 AND p.Score<45 AND p.CommentCount>4 AND p.CommentCount<32 AND u.DownVotes>693 AND u.DownVotes<1490 AND v.CreationDate>'2011-10-22 16:02:56'::timestamp AND v.CreationDate<'2014-07-21 22:46:45'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<10 AND b.Date>'2013-07-20 07:02:31'::timestamp AND b.Date<'2014-01-11 12:44:36'::timestamp;

