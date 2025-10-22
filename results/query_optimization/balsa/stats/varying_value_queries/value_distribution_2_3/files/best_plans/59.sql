/*+ MergeJoin(v b u p)
 HashJoin(b u p)
 NestLoop(u p)
 IndexScan(v)
 SeqScan(b)
 SeqScan(u)
 IndexScan(p)
 Leading((v (b (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>14 AND p.Score<99 AND p.CommentCount>3 AND p.CommentCount<5 AND u.DownVotes>241 AND u.DownVotes<376 AND v.CreationDate>'2010-04-18 07:25:05'::timestamp AND v.CreationDate<'2011-12-18 02:41:38'::timestamp AND v.VoteTypeId>4 AND v.VoteTypeId<14 AND b.Date>'2011-09-17 07:37:45'::timestamp AND b.Date<'2013-01-29 02:24:15'::timestamp;

