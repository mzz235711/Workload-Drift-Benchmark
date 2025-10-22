/*+ NestLoop(v p u b)
 NestLoop(v p u)
 NestLoop(v p)
 SeqScan(v)
 IndexScan(p)
 IndexScan(u)
 IndexScan(b)
 Leading((((v p) u) b)) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>17 AND p.Score<147 AND p.CommentCount>5 AND p.CommentCount<18 AND u.DownVotes>70 AND u.DownVotes<235 AND v.CreationDate>'2011-10-03 07:53:08'::timestamp AND v.CreationDate<'2014-07-19 13:10:06'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<15 AND b.Date>'2012-04-28 11:59:57'::timestamp AND b.Date<'2013-11-03 07:11:04'::timestamp;

