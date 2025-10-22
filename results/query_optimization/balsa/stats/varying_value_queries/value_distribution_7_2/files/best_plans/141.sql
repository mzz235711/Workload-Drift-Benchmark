/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>21 AND p.Score<116 AND p.CommentCount>0 AND p.CommentCount<40 AND u.DownVotes>758 AND u.DownVotes<951 AND v.CreationDate>'2011-01-27 01:13:42'::timestamp AND v.CreationDate<'2014-09-10 19:16:52'::timestamp AND v.VoteTypeId>8 AND v.VoteTypeId<14 AND b.Date>'2013-04-23 05:24:38'::timestamp AND b.Date<'2014-01-19 14:52:25'::timestamp;

